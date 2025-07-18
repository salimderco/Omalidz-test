import { Controller, Post, Body, Get, UseGuards, Req } from '@nestjs/common';
import { NotificationsService } from './notifications.service';
import { AuthGuard } from '../../auth.guard';
import { RolesGuard } from '../../roles.guard';
import { PostNotificationDto } from './dto/post-notification.dto';
import { ValidationPipe } from '@nestjs/common';

@Controller('notifications')
export class NotificationsController {
  constructor(private readonly notificationsService: NotificationsService) {}

  // TODO: Notification endpoints are disabled due to missing model/service methods.
  // @Post()
  // @UseGuards(AuthGuard, new RolesGuard(['admin']))
  // async postNotification(@Body(new ValidationPipe()) body: PostNotificationDto) {
  //   return this.notificationsService.postNotification(body.title, body.body, body.userId);
  // }

  // @Get('my')
  // @UseGuards(AuthGuard)
  // async getMyNotifications(@Req() req) {
  //   return this.notificationsService.getNotificationsForUser(req.user.id);
  // }

  // @Get()
  // @UseGuards(AuthGuard, new RolesGuard(['admin']))
  // async getAllNotifications() {
  //   return this.notificationsService.getAllNotifications();
  // }
} 