CREATE TABLE public.products (
    product_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0
        CHECK (quantity >= 0),
    unit_price NUMERIC(12, 2) NOT NULL
        CHECK (unit_price >= 0),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);