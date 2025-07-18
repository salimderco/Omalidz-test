import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../prisma.service';

@Injectable()
export class RequestsService {
  constructor(private prisma: PrismaService) {}

  // TODO: Request model is missing in Prisma schema. Implementation is commented out.
  // async submitRequest(userId: string, type: string, details?: string) {
  //   return this.prisma.request.create({
  //     data: {
  //       userId,
  //       type,
  //       details,
  //       status: 'pending',
  //     },
  //   });
  // }

  // async approveRequest(requestId: string) {
  //   return this.prisma.request.update({
  //     where: { id: requestId },
  //     data: { status: 'approved' },
  //   });
  // }

  // async rejectRequest(requestId: string) {
  //   return this.prisma.request.update({
  //     where: { id: requestId },
  //     data: { status: 'rejected' },
  //   });
  // }

  // async getRequestsForUser(userId: string) {
  //   return this.prisma.request.findMany({
  //     where: { userId },
  //     orderBy: { createdAt: 'desc' },
  //   });
  // }

  // async getAllRequests() {
  //   return this.prisma.request.findMany({ orderBy: { createdAt: 'desc' } });
  // }

  // async getRequestById(requestId: string) {
  //   return this.prisma.request.findUnique({ where: { id: requestId } });
  // }
} 