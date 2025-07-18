import { TasksService } from './tasks.service';
import { CreateTaskDto } from './dto/create-task.dto';
export declare class TasksController {
    private readonly tasksService;
    constructor(tasksService: TasksService);
    createTask(body: CreateTaskDto, req: any): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    assignTask(id: string, body: {
        assignedToId: string;
    }): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    updateStatus(id: string, body: {
        status: string;
    }): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }>;
    getMyTasks(req: any): Promise<{
        id: string;
        title: string;
        description: string;
        status: string;
        userId: string | null;
        createdAt: Date;
        updatedAt: Date;
    }[]>;
    getTask(id: string): Promise<{
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
