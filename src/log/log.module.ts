import { Module } from '@nestjs/common';
import { LogService } from './log.service';
import { LogController } from './log.controller';
import { Type } from 'class-transformer';
import { SystemLog } from 'entities/SystemLog';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([SystemLog])],
  controllers: [LogController],
  providers: [LogService],
  exports: [LogService]
})
export class LogModule {}
