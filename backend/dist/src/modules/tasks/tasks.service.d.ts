import { PrismaService } from '../../prisma.service';
export declare class TasksService {
    private prisma;
    constructor(prisma: PrismaService);
    createTask(data: {
        title: string;
        description: string;
        userId: string;
    }): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    assignTask(taskId: string, userId: string): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    updateTaskStatus(taskId: string, status: string): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    getTasksForUser(userId: string): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }[]>;
    getTaskById(taskId: string): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    getAllTasks(): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }[]>;
}
