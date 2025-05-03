import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("system_log", { schema: "wiseacademy" })
export class SystemLog {
  @PrimaryGeneratedColumn({ type: "int", name: "id" })
  id: number;

  @Column("varchar", { name: "file", length: 50 })
  file: string;

  @Column("varchar", { name: "error", length: 500 })
  error: string;

  @Column("text", { name: "extra" })
  extra: string;

  @Column("timestamp", {
    name: "created_at",
    default: () => "CURRENT_TIMESTAMP",
  })
  createdAt: Date;
}
