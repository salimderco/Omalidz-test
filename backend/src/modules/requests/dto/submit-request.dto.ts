import { IsString, IsOptional } from 'class-validator';

export class SubmitRequestDto {
  @IsString()
  type: string;

  @IsOptional()
  @IsString()
  details?: string;
} 