import { Injectable, CanActivate, ExecutionContext, UnauthorizedException } from '@nestjs/common';
import * as jwt from 'jsonwebtoken';
import { PrismaService } from './prisma.service';

const JWT_SECRET = process.env.JWT_SECRET || 'dev_secret';

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private prisma: PrismaService) {}
  async canActivate(context: ExecutionContext): Promise<boolean> {
    const request = context.switchToHttp().getRequest();
    const authHeader = request.headers['authorization'];
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      throw new UnauthorizedException('No token provided');
    }
    const token = authHeader.split(' ')[1];
    try {
      const decoded: any = jwt.verify(token, JWT_SECRET);
      // Look up user in DB to get role
      const user = await this.prisma.user.findUnique({ where: { id: decoded.userId } });
      if (!user) throw new UnauthorizedException('User not found');
      request.user = { id: user.id, role: user.role, email: user.email, name: user.name };
      return true;
    } catch (err) {
      throw new UnauthorizedException('Invalid token');
    }
  }
} 