# Historias Elephant Carpaccio

## US-01 - 1 articulo, precio fijo $10, solo a CA, sin impuestos, dsctos
La factura se emite para:
- Un sólo articulo
- Precio fijo=$10
- Se envía sólo a CA
- Sin impuesto
- Sin descuento

## US-02 - Se aplica impuesto de 8.25% por enviarse a CA
La factura se emite para:
- Un sólo articulo
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Sin descuento

## US-03 - Se recibe la cantidad
La factura se emite para:
- Se recibe la cantidad de articulos
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Sin descuento

## US-04 - Validacion cant. entera
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Sin descuento

## US-05 - Dscto +1000
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto si:
    monto>$1000 -> 3%

## US-06  - Dscto +1000, +5000
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto si:
    monto>$1000 -> 3%
    monto>$5000 -> 5%

## US-07 - Dscto +1000, +5000, +7000
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto si:
    monto>$1000 -> 3%
    monto>$5000 -> 5%
    monto>$7000 -> 7%

## US-08 - Dscto +1000, +5000, +7000, +10000
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto si:
    monto>$1000 -> 3%
    monto>$5000 -> 5%
    monto>$7000 -> 7%
    monto>$10000 -> 10%

## US-09 - Dscto +1000, +5000, +7000, +10000, +50000
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Precio fijo=$10
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto si:
    monto>$1000 -> 3%
    monto>$5000 -> 5%
    monto>$7000 -> 7%
    monto>$10000 -> 10%
    monto>$50000 -> 15%

## US-10 - Se recibe el precio
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto por rangos

## US-11 - Se valida sea entero el precio
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se envía sólo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto por rangos

## US-12 - Se recibe el estado
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado, pero se envia solo a CA
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto por rangos

## US-13 - Se valida el estado sea solo CA
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado (se valida solo CA)
- Se aplica impuesto fijo de 8.25%
- Se aplica dscto por rangos

** MVP **
## US-14 - Se aplica impuesto por estado (Solo CA)
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuesto:
    CA -> impuesto de 8.25%
- Se aplica dscto por rangos

## US-15 - Se aplica impuesto: CA, UT
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuesto:
    CA -> impuesto de 8.25%
    UT -> impuesto de 6.85%
- Se aplica dscto por rangos

## US-16 - Se aplica impuesto: CA, UT, NV
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuesto:
    CA -> impuesto de 8.25%
    UT -> impuesto de 6.85%
    NV -> impuesto de 8.00%
- Se aplica dscto por rangos

## US-17 - Se aplica impuesto: CA, UT, NV, TX
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuesto:
    CA -> impuesto de 8.25%
    UT -> impuesto de 6.85%
    NV -> impuesto de 8.00%
    TX -> impuesto de 6.25%
- Se aplica dscto por rangos

## US-18 - Se aplica impuesto: CA, UT, NV, TX, AL
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuesto:
    CA -> impuesto de 8.25%
    UT -> impuesto de 6.85%
    NV -> impuesto de 8.00%
    TX -> impuesto de 6.25%
    AL -> impuesto de 4.00%
- Se aplica dscto por rangos

## US-19 - Reporte: total
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuestos
- Se aplica dscto por rangos
- Se muestra reporte: total

## US-20 - Reporte: dsco, total
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuestos
- Se aplica dscto por rangos
- Se muestra reporte: dsco, total

## US-21 - Reporte: impuesto, dsco, total
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuestos
- Se aplica dscto por rangos
- Se muestra reporte: impuesto, dsco, total

## US-22 - Reporte: calculo monto, impuesto, dsco, total
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuestos
- Se aplica dscto por rangos
- Se muestra reporte: calculo monto, impuesto, dsco, total

## US-23 - Se acepta minusculas para el estado
La factura se emite para:
- Se recibe la cantidad de articulos (se valida sea entero)
- Se recibe el precio (se valida sea entero)
- Se recibe el estado y se aplica impuestos (se acepta minusculas)
- Se aplica dscto por rangos
- Se muestra reporte: calculo monto, impuesto, dsco, total

...continuara!