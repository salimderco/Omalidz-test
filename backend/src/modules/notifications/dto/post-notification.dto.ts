import { IsString, IsOptional } from 'class-validator';

export class PostNotificationDto {
  @IsString()
  title: string;

  @IsString()
  body: string;

  @IsOptional()
  @IsString()
  userId?: string;
} 