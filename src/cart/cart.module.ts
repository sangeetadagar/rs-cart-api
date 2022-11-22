import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CartItem } from '../orm/entities/cart-item';

import { OrderModule } from '../order/order.module';

import { CartController } from './cart.controller';
import { CartService } from './services';


@Module({
  imports: [OrderModule, TypeOrmModule.forFeature([CartItem])],
  providers: [CartService],
  controllers: [CartController]
})
export class CartModule { }
