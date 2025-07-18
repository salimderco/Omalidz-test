import { Controller, Post, Body, Patch, Param, Get, UseGuards, Req } from '@nestjs/common';
import { TasksService } from './tasks.service';
import { AuthGuard } from '../../auth.guard';
import { CreateTaskDto } from './dto/create-task.dto';
import { ValidationPipe } from '@nestjs/common';

@Controller('tasks')
export class TasksController {
  constructor(private readonly tasksService: TasksService) {}

  @Post()
  @UseGuards(AuthGuard)
  async createTask(
    @Body(new ValidationPipe()) body: CreateTaskDto,
    @Req() req,
  ) {
    // Use req.user.id from JWT
    return this.tasksService.createTask({
      ...body,
      userId: req.user.id,
    });
  }

  @Patch(':id/assign')
  @UseGuards(AuthGuard)
  async assignTask(@Param('id') id: string, @Body() body: { assignedToId: string }) {
    return this.tasksService.assignTask(id, body.assignedToId);
  }

  @Patch(':id/status')
  @UseGuards(AuthGuard)
  async updateStatus(@Param('id') id: string, @Body() body: { status: string }) {
    return this.tasksService.updateTaskStatus(id, body.status);
  }

  @Get('my')
  @UseGuards(AuthGuard)
  async getMyTasks(@Req() req) {
    return this.tasksService.getTasksForUser(req.user.id);
  }

  @Get(':id')
  @UseGuards(AuthGuard)
  async getTask(@Param('id') id: string) {
    return this.tasksService.getTaskById(id);
  }

  @Get()
  @UseGuards(AuthGuard)
  async getAllTasks() {
    return this.tasksService.getAllTasks();
  }
} 