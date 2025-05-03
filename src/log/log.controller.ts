import { Controller, Get, Post, Body, Patch, Param, Delete, UseInterceptors, HttpStatus, HttpException } from '@nestjs/common';
import { LogService } from './log.service';
import { FileInterceptor } from '@nestjs/platform-express';
import { SystemLog } from 'entities/SystemLog';
import { DeepPartial } from 'typeorm';
import { messages } from 'src/utils/messages';

@Controller('log')
export class LogController {
  constructor(private readonly service: LogService) {}

  @Post('add')
  @UseInterceptors(FileInterceptor(''))
  async create(@Body() body: DeepPartial<SystemLog>) {
    let response: any;
    try {
      response = await this.service.create(body);
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'add-systemlog',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.service.create(dataLog);
      throw new HttpException (
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }
}
