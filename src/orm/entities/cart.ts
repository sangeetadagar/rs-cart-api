import { PrimaryGeneratedColumn, UpdateDateColumn, CreateDateColumn, Entity } from 'typeorm';

@Entity({ name: 'carts' })
export class Cart {
    @PrimaryGeneratedColumn('uuid')
    id: string;

    @CreateDateColumn({ type: 'timestamptz', default: () => 'CURRENT_TIMESTAMP' })
    created_at: Date;

    @UpdateDateColumn({ type: 'timestamptz', default: () => 'CURRENT_TIMESTAMP' })
    updated_at: Date;
}