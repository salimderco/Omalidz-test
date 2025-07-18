import { Controller, Post, Body, Get, Param, Patch, UseGuards, Req } from '@nestjs/common';
import { RequestsService } from './requests.service';
import { AuthGuard } from '../../auth.guard';
import { RolesGuard } from '../../roles.guard';
import { SubmitRequestDto } from './dto/submit-request.dto';
import { ValidationPipe } from '@nestjs/common';

@Controller('requests')
export class RequestsController {
  constructor(private readonly requestsService: RequestsService) {}

  // TODO: Request endpoints are disabled due to missing model/service methods.
  // @Post()
  // @UseGuards(AuthGuard)
  // async submitRequest(@Req() req, @Body(new ValidationPipe()) body: SubmitRequestDto) {
  //   return this.requestsService.submitRequest(req.user.id, body.type, body.details);
  // }

  // @Patch(':id/approve')
  // @UseGuards(AuthGuard, new RolesGuard(['admin']))
  // async approveRequest(@Param('id') id: string) {
  //   return this.requestsService.approveRequest(id);
  // }

  // @Patch(':id/reject')
  // @UseGuards(AuthGuard, new RolesGuard(['admin']))
  // async rejectRequest(@Param('id') id: string) {
  //   return this.requestsService.rejectRequest(id);
  // }

  // @Get('my')
  // @UseGuards(AuthGuard)
  // async getMyRequests(@Req() req) {
  //   return this.requestsService.getRequestsForUser(req.user.id);
  // }

  // @Get()
  // @UseGuards(AuthGuard, new RolesGuard(['admin']))
  // async getAllRequests() {
  //   return this.requestsService.getAllRequests();
  // }

  // @Get(':id')
  // @UseGuards(AuthGuard)
  // async getRequest(@Param('id') id: string) {
  //   return this.requestsService.getRequestById(id);
  // }
} 