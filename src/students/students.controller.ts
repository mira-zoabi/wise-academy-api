import { Controller, Get, Post, Body, Param, HttpStatus, HttpException, UseInterceptors } from '@nestjs/common';
import { StudentsService } from './students.service';
import { LogService } from 'src/log/log.service';
import { messages } from 'src/utils/messages';
import { FileInterceptor } from '@nestjs/platform-express';
import { addDto, searchDto, updateDto } from './dto/student.dto';

@Controller('students')
export class StudentsController {
  constructor(private readonly service: StudentsService,
    private logService: LogService
  ) { }

  @Get('get')
  async getAll() {
    let response: any;
    try {
      response = await this.service.getAll();
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'get-students',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.logService.create(dataLog);
      throw new HttpException(
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }

  @Post('add')
  @UseInterceptors(FileInterceptor(''))
  async Add(@Body() body: addDto) {
    let response: any;
    try {
      response = await this.service.add(body);
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'add-student',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.logService.create(dataLog);
      throw new HttpException(
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }

  @Post('update')
  @UseInterceptors(FileInterceptor(''))
  async Update(@Body() body: updateDto) {
    let response: any;
    try {
      response = await this.service.update(body);
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'update-student',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.logService.create(dataLog);
      throw new HttpException(
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }

  @Get('delete/:id')
  async Delete(@Param() id: number) {
    let response: any;
    try {
      response = await this.service.delete(id);
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'delete-student',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.logService.create(dataLog);
      throw new HttpException(
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }

  @Post('search')
  @UseInterceptors(FileInterceptor(''))
  async Search(@Body() body: searchDto) {
    let response: any;
    try {
      response = await this.service.search(body);
      return {
        statusCode: HttpStatus.OK,
        message: '',
        data: response,
      };
    } catch (error) {
      let dataLog = {
        file: 'search-students',
        extra: error.stack.toString(),
        error: error.message.toString(),
      };
      this.logService.create(dataLog);
      throw new HttpException(
        {
          statusCode: HttpStatus.BAD_REQUEST,
          message: messages.error,
        },
        HttpStatus.BAD_REQUEST,
      );
    }
  }
}
