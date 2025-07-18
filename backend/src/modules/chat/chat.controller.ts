import { Controller, Post, Body, Get, Param, UseGuards, Req } from '@nestjs/common';
import { ChatService } from './chat.service';
import { AuthGuard } from '../../auth.guard';
import { SendMessageDto } from './dto/send-message.dto';
import { ValidationPipe } from '@nestjs/common';

@Controller('chat')
export class ChatController {
  constructor(private readonly chatService: ChatService) {}

  // TODO: Chat endpoints are disabled due to missing model/service methods.
  // @Post('send')
  // @UseGuards(AuthGuard)
  // async sendMessage(@Req() req, @Body(new ValidationPipe()) body: SendMessageDto) {
  //   return this.chatService.sendMessage(req.user.id, body.receiverId, body.content);
  // }

  // @Get('with/:userId')
  // @UseGuards(AuthGuard)
  // async getMessagesWith(@Req() req, @Param('userId') userId: string) {
  //   return this.chatService.getMessagesBetweenUsers(req.user.id, userId);
  // }

  // @Get('inbox')
  // @UseGuards(AuthGuard)
  // async getInbox(@Req() req) {
  //   return this.chatService.getInbox(req.user.id);
  // }
} 