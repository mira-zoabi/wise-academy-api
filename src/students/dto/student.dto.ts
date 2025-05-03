import { IsNumberString, IsOptional, IsString } from "class-validator";

export class addDto {
    @IsString()
    firstName: string;

    @IsString()
    lastName: string;

    @IsString()
    sex: string;

    @IsString()
    gradeLevel: string;

    @IsString()
    previousSchool: string;

    @IsString()
    phase: string;

    @IsString()
    notes: string;
}

export class updateDto {
    @IsNumberString()
    id: number;
    
    @IsString()
    @IsOptional()
    firstName: string;

    @IsString()
    @IsOptional()
    lastName: string;

    @IsString()
    @IsOptional()
    sex: string;

    @IsString()
    @IsOptional()
    gradeLevel: string;

    @IsString()
    @IsOptional()
    previousSchool: string;

    @IsString()
    @IsOptional()
    phase: string;

    @IsString()
    @IsOptional()
    notes: string;
}

export class searchDto {
    @IsString()
    @IsOptional()
    name?: string;
    
    @IsNumberString()
    @IsOptional()
    numberID?: string;
  }