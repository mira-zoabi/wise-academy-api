import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("students", { schema: "wiseacademy" })
export class Students {
  @PrimaryGeneratedColumn({ type: "int", name: "id" })
  id: number;

  @Column("varchar", { name: "first_name", length: 30 })
  firstName: string;

  @Column("varchar", { name: "last_name", length: 30 })
  lastName: string;

  @Column("varchar", { name: "sex", length: 30 })
  sex: string;

  @Column("varchar", { name: "grade_level", length: 50 })
  gradeLevel: string;

  @Column("varchar", { name: "previous_school", length: 75 })
  previousSchool: string;

  @Column("varchar", { name: "phase", length: 20 })
  phase: string;

  @Column("varchar", { name: "notes", length: 100 })
  notes: string;

  @Column("timestamp", {
    name: "updated_at",
    default: () => "CURRENT_TIMESTAMP",
  })
  updatedAt: Date;

  @Column("timestamp", {
    name: "created_at",
    default: () => "CURRENT_TIMESTAMP",
  })
  createdAt: Date;
}
