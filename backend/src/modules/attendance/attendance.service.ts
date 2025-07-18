import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../prisma.service';

@Injectable()
export class AttendanceService {
  constructor(private prisma: PrismaService) {}

  // TODO: Attendance model is missing in Prisma schema. Implementation is commented out.
  // async checkIn(userId: string, gps?: string) {
  //   return this.prisma.attendance.create({
  //     data: {
  //       userId,
  //       checkIn: new Date(),
  //       gps,
  //     },
  //   });
  // }

  // async checkOut(attendanceId: string) {
  //   return this.prisma.attendance.update({
  //     where: { id: attendanceId },
  //     data: { checkOut: new Date() },
  //   });
  // }

  // async getHistory(userId: string) {
  //   return this.prisma.attendance.findMany({
  //     where: { userId },
  //     orderBy: { checkIn: 'desc' },
  //   });
  // }
} 