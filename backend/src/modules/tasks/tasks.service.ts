import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../prisma.service';

@Injectable()
export class TasksService {
  constructor(private prisma: PrismaService) {}

  async createTask(data: { title: string; description: string; userId: string }) {
    return this.prisma.task.create({
      data: {
        title: data.title,
        description: data.description,
        userId: data.userId,
        status: 'pending',
      },
    });
  }

  async assignTask(taskId: string, userId: string) {
    return this.prisma.task.update({
      where: { id: taskId },
      data: { userId },
    });
  }

  async updateTaskStatus(taskId: string, status: string) {
    return this.prisma.task.update({
      where: { id: taskId },
      data: { status },
    });
  }

  async getTasksForUser(userId: string) {
    return this.prisma.task.findMany({
      where: { userId: userId },
      orderBy: { createdAt: 'desc' },
    });
  }

  async getTaskById(taskId: string) {
    return this.prisma.task.findUnique({ where: { id: taskId } });
  }

  async getAllTasks() {
    return this.prisma.task.findMany({ orderBy: { createdAt: 'desc' } });
  }
} 