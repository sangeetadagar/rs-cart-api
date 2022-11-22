CREATE TABLE IF NOT EXISTS public.carts
(
    id uuid NOT NULL default gen_random_uuid(),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    CONSTRAINT carts_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.carts
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.cart_items
(
    cart_id uuid,
    product_id uuid,
    count integer,
    CONSTRAINT cart_id FOREIGN KEY (cart_id)
        REFERENCES public.carts (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cart_items
    OWNER to postgres;
    
insert into public.carts(created_at, updated_at) values(current_timestamp, current_timestamp),
(current_timestamp, current_timestamp);

insert into public.cart_items(cart_id, product_id,count) values('6118cab4-97be-4de1-90c2-93d5a4f2f007', '52a602a9-cf31-4753-8031-b74db9f19c05', 1),
('6118cab4-97be-4de1-90c2-93d5a4f2f007', '8a7d1394-009c-4ab2-b5b4-a91dbcbcf4b7', 1),
('88498934-5dc1-4154-ad20-87981d149789', 'e8b01837-1372-41cc-a0ee-665e3f05fe5a', 1),
('88498934-5dc1-4154-ad20-87981d149789', '8a7d1394-009c-4ab2-b5b4-a91dbcbcf4b7', 1);