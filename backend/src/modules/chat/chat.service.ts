import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../prisma.service';

@Injectable()
export class ChatService {
  constructor(private prisma: PrismaService) {}

  // All methods using this.prisma.message have been removed due to missing Prisma model.
} 