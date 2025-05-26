(:3. Mostrar el ID de factura como ID de cliente y correo del cliente:)
<Clientes>{
for $x in collection("facturasDb")/factura
  return 
    <cliente id="{$x/@id}">{$x/cliente/email/text()}</cliente>
    
  
}
</Clientes>

  