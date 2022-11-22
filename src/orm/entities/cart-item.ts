import { PrimaryGeneratedColumn, Entity, Column, ManyToOne } from 'typeorm';
import { Cart } from "./cart";

@Entity({ name: 'cart_items' })
export class CartItem {
    @PrimaryGeneratedColumn('uuid')
    product_id: string;

    @Column()
    count: number;

    @ManyToOne(() => Cart, cart => cart.id) cart_id: Cart;
}