import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { SystemLog } from 'entities/SystemLog';
import { DeepPartial, Repository } from 'typeorm';

@Injectable()
export class LogService {
  constructor(
    @InjectRepository(SystemLog)
    private log: Repository<SystemLog>,
  ) {}

  async create(data: DeepPartial<SystemLog>) {
    await this.log .save(data);
  }
}
