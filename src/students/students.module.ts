import { Module } from '@nestjs/common';
import { StudentsService } from './students.service';
import { StudentsController } from './students.controller';
import { LogModule } from 'src/log/log.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Students } from 'entities/Students';

@Module({
  imports: [TypeOrmModule.forFeature([Students]), LogModule],
  controllers: [StudentsController],
  providers: [StudentsService],
})
export class StudentsModule {}
