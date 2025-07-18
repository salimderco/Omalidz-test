import { Controller, Post, Body, Get, Param, UseGuards, Req } from '@nestjs/common';
import { AttendanceService } from './attendance.service';
import { AuthGuard } from '../../auth.guard';
import { CheckInDto } from './dto/check-in.dto';
import { ValidationPipe } from '@nestjs/common';

@Controller('attendance')
export class AttendanceController {
  constructor(private readonly attendanceService: AttendanceService) {}

  // TODO: Attendance endpoints are disabled due to missing model/service methods.
  // @Post('check-in')
  // @UseGuards(AuthGuard)
  // async checkIn(@Req() req, @Body(new ValidationPipe()) body: CheckInDto) {
  //   return this.attendanceService.checkIn(req.user.id, body.gps);
  // }

  // @Post('check-out/:attendanceId')
  // @UseGuards(AuthGuard)
  // async checkOut(@Param('attendanceId') attendanceId: string) {
  //   return this.attendanceService.checkOut(attendanceId);
  // }

  // @Get('history')
  // @UseGuards(AuthGuard)
  // async getHistory(@Req() req) {
  //   return this.attendanceService.getHistory(req.user.id);
  // }
} 