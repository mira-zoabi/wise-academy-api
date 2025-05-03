import { Injectable } from '@nestjs/common';
import { addDto, updateDto } from './dto/student.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Students } from 'entities/Students';
import { Repository } from 'typeorm';

@Injectable()
export class StudentsService {
  constructor(
    @InjectRepository(Students) private repo: Repository<Students>,
  ) { }

  async getAll() {
    return await this.repo.find();
  }

  async add(body: addDto) {
    return await this.repo.save(body);
  }

  async update(body: updateDto) {
    return await this.repo
      .createQueryBuilder()
      .update(Students)
      .set(body)
      .where("id = :id", { id: body.id })
      .execute();
  }

  async delete(id: number) {
    return await this.repo.delete(id);
  }

  async search(body: any) {
    if (body.name) {
      const nameQuery = body.name.trim();

      const queryBuilder = this.repo.createQueryBuilder('student')
        .where('LOWER(student.firstName) LIKE LOWER(:name) OR LOWER(student.lastName) LIKE LOWER(:name)', {
          name: `%${nameQuery}%`
        });

      return await queryBuilder.getMany();
    }

    else if (body.numberID) {
      return await this.repo.find({
        where: { id: Number(body.numberID) }
      });
    }

    else {
      return await this.repo.find();
    }
  }
}
