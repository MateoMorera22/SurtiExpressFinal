# SurtiExpress
**DISEÑO Y DESARROLLO DE UNA APLICACIÓN WEB PARA LA VINCULACIÓN LABORAL**

<a data-flickr-embed="true" href="https://www.flickr.com/photos/152655388@N06/52517823429/in/dateposted-public/" title="Surti Express logo (2.0)"><img src="https://live.staticflickr.com/65535/52517823429_e8cef762e5_k.jpg" width="100%" height="500" alt="Surti Express logo (2.0)"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>
  
Jose Mateo Morera Orjuela \
Universidad EAN \
Facultad de Ingeniería \
Bases de Datos 


### INTRODUCCIÓN

SurtiExpress es creado como un sistema de domicilios, para comercios pequeños, con el objetivo de mejorar el proceso de distribución y generación de pedidos, generar consultas en tiempo real, frente al inventario adquirido, agilizar el proceso de devolución de los productos, asignar tareas de acuerdo a los tiempos de los empleados, procesos en los que intervienen el administrador, empleados y clientes.

### NECESIDAD/JUSTIFICACIÓN

Se evidenciaron falencias en el control de algunos de los procesos que se llevan a cabo en las empresas dedicadas a la venta y distribución a los comercios pequeños, los cuales dan como resultado perdido de mercancía, tiempo y por ende perdidas a nivel económico, dando como objetivo el desarrollar un sistema de información que mejore el control de la gestión de algunos de los procesos logísticos y productivos de las empresas comercializadoras de productos.



### REQUISITOS FUNCIONALES

| Número de requerimiento | RF001 |
| --- | --- |
| Nombre de requerimiento | Registrar Empleado |
| Tipo | Requisito                                  |
| Fuente del requerimiento | Administrador |
| Proceso | El sistema permitirá crear una nueva cuenta de empleado. | Esencial |

| Número de requerimiento | RF002 |
| --- | --- |
| Nombre de requerimiento | Registrar Cliente |
| Tipo | Requisito                                  |
| Fuente del requerimiento | Cliente |
| Proceso | El sistema permitirá la creación de nuevos usuarios al sistema | Esencial |

| Número de requerimiento | RF003 |
| --- | --- |
| Nombre de requerimiento | Ver catálogo |
| Tipo | Requisito      |
| Fuente del requerimiento | Cliente |
| Proceso | El sistema permitirá ver los productos registrados en el inventario. | Esencial |

| Número de requerimiento | RF004 |
| --- | --- |
| Nombre de requerimiento | Registrar pedido                             |
| Tipo | Requisito                                  |
| Fuente del requerimiento | Cliente 
| Proceso | El sistema permitirá la creación de pedidos |
| Prioridad del requerimiento | Esencial |

| Número de requerimiento | RF005 |
| --- | --- |
| Nombre de requerimiento | Editar pedido |
| Tipo | Requisito                                  |
| Fuente del requerimiento | Cliente |
| Proceso | El sistema permitirá la edición de productos en el pedido. | Esencial |

| Número de requerimiento | RF006 |
| --- | --- |
| Nombre de requerimiento | Cancelar pedido |
| Tipo | Requisito|
| Fuente del requerimiento | Cliente |
| Proceso | El sistema permitirá la cancelación de pedidos, siempre y cuando cumpla con el tiempo límite (12 horas). | Esencial |

| Número de requerimiento | RF007 |
| --- | --- |
| Nombre de requerimiento | Ver orden de compra|
| Tipo | Requisito |
| Fuente del requerimiento | Transportador |
| Proceso | El sistema permitirá ver las órdenes de compra de los pedidos |
| Prioridad del requerimiento | Esencial |

| Número de requerimiento | RF008 |
| --- | --- |
| Nombre de requerimiento | Visualizar pedido |
| Tipo | Requisito |
| Fuente del requerimiento | Cliente |
| Proceso | El sistema permitirá la visualización previa del pedido y productos registrados en este. | Esencial |

| Número de requerimiento | RF009 |
| --- | --- |
| Nombre de requerimiento | Descargar orden de compra |
| Tipo | Requisito  |
| Fuente del requerimiento | Transportador |
| Proceso | El sistema permitirá la visualización previa del pedido y productos registrados en este. | Esencial |

| Número de requerimiento | RF010 |
| --- | --- |
| Nombre de requerimiento | Consultar registro de pedidos |
| Tipo | Requisito                                 |
| Fuente del requerimiento | Administrador |
| Proceso | El sistema permitirá la consulta de todos los pedidos realizados. | Esencial |

| Número de requerimiento | RF011 |
| --- | --- |
| Nombre de requerimiento | Visualizar estadísticas de pedidos |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso | El sistema permitirá visualizar las estadísticas de los pedidos más vendidos.  | Esencial |

| Número de requerimiento | RF012 |
| --- | --- |
| Nombre de requerimiento | Ver inventario |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso |El sistema permitirá observar el inventario y productos disponibles en este.| Esencial |

| Número de requerimiento | RF013 |
| --- | --- |
| Nombre de requerimiento | Registrar producto |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso |El sistema permitirá el registro de un nuevo producto a la empresa. | Esencial |

| Número de requerimiento | RF014 |
| --- | --- |
| Nombre de requerimiento | Editar producto |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso |El sistema permitirá la edición en la información del producto. | Esencial |

| Número de requerimiento | RF015 |
| --- | --- |
| Nombre de requerimiento | Eliminar producto |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso |El sistema permitirá la eliminación de productos que la empresa deje de vender la empresa. | Moderado |

| Número de requerimiento | RF016 |
| --- | --- |
| Nombre de requerimiento | Ver lista de transportadores |
| Tipo | Requisito |
| Fuente del requerimiento | Administrador |
| Proceso |El sistema permitirá ver qué transportadores están disponibles y cuáles tienen ruta asignada. | Escencial |


### REQUISITOS NO FUNCIONALES

| Número de requerimiento | RNF001 |
| --- | --- |
| Nombre de requerimiento | Validacion de credenciales |
| Tipo | Seguridad                                 |
| Fuente del requerimiento | Sistema/ Desarrollador |
| Proceso | El sistema no permitirá el ingreso no autorizado al sistema. | Esencial |

| Número de requerimiento | RNF002 |
| --- | --- |
| Nombre de requerimiento | OS |
| Tipo | Rendimiento                      |
| Fuente del requerimiento | Desarrollador |
| Proceso | El sistema necesitará de un sistema operativo compatible con Java y internet | Escencial |

| Número de requerimiento | RNF003 |
| --- | --- |
| Nombre de requerimiento | Roles |
| Tipo | Seguridad                                  |
| Fuente del requerimiento | Sistema/Desarrollador|
| Proceso | El sistema permitirá realizar Login dependiendo del usuario que ingrese. | Esencial |

| Número de requerimiento | RNF004 |
| --- | --- |
| Nombre de requerimiento | Alojamiento de la aplicación |
| Tipo | Requisito                                  |
| Fuente del requerimiento | Administrador |
| Proceso | La aplicación esta alojada en un servicio de hosting online, estando disponible para los usuarios a través de la web. |
| Prioridad del requerimiento | Esencial |


### HERRAMIENTAS UTILIZADAS

  1. **JAVA**

Es un lenguaje de programación ampliamente utilizado para codificar aplicaciones web. Ha sido una opción popular entre los desarrolladores durante más de dos décadas, con millones de aplicaciones Java en uso en la actualidad. Java es un lenguaje multiplataforma, orientado a objetos y centrado en la red que se puede utilizar como una plataforma en sí mismo. Es un lenguaje de programación rápido, seguro y confiable para codificarlo todo, desde aplicaciones móviles y software empresarial hasta aplicaciones de macrodatos y tecnologías del servidor.

 <img src="https://1000marcas.net/wp-content/uploads/2020/11/Java-logo.png" width="300">
 
  2. **Java Server Faces**

JavaServer Faces (JSF) es una tecnología y framework para aplicaciones Java basadas en web que simplifica el desarrollo de interfaces de usuario en aplicaciones Java EE. JSF usa JavaServer Pages (JSP) como la tecnología que permite hacer el despliegue de las páginas, pero también se puede acomodar a otras tecnologías como XUL (acrónimo de XML-based User-interface Language, lenguaje basado en XML para la interfaz de usuario)

 <img src="https://faces.liferay.dev/jsf-showcase?p_p_id=1_WAR_comliferayfacesdemojsfshowcaseportlet&p_p_lifecycle=2&p_p_state=normal&p_p_mode=view&p_p_cacheability=cacheLevelPage&p_p_col_id=column-1&p_p_col_count=1&_1_WAR_comliferayfacesdemojsfshowcaseportlet_javax.faces.resource=jsf-logo.png&_1_WAR_comliferayfacesdemojsfshowcaseportlet_ln=images" width="300">
 
  3. **Enterprise JavaBeans**

Las Enterprise JavaBeans (también conocidas por sus siglas EJB) son una de las interfaces de programación de aplicaciones (API) que forman parte del estándar de construcción de aplicaciones empresariales J2EE (ahora JEE) de Oracle Corporation (inicialmente desarrollado por Sun Microsystems).

Su especificación detalla cómo los servidores de aplicaciones proveen objetos desde el lado del servidor, que son precisamente los EJB:

- Comunicación remota utilizando CORBA.
- Transacciones.
- Control de la concurrencia.
- Eventos utilizando JMS (Java Messaging Service).
- Servicios de nombres y de directorio.
- Seguridad.
- Ubicación de componentes en un servidor de aplicaciones.
- La especificación de EJB define los papeles jugados por el contenedor de EJB y los EJB, además de disponer los EJB en un contenedor.

<img src="https://www.javatpoint.com/fullformpages/images/ejb.png" width="300">


  4. **MySQL**

MySQL es un sistema de gestión de bases de datos relacionaleS (RDBMS) de código abierto basado en el lenguaje de consulta estructurado (SQL). Aunque se puede utilizar para muchos propósitos, el desarrollo web es el ámbito en donde más se utiliza.

 <img src="https://user-images.githubusercontent.com/17323717/165866348-6cc14729-781b-438b-956d-9f7736034b6e.png" width="300">


### ARQUITECTURA DE SOFTWARE

La arquitectura utilizada para el presente trabajo será el &quot;Modelo–vista–controlador&quot; (MVC) ya que se separaran los datos, la lógica y la interfaz de usuario. A continuación, se presenta de manera más detallada el contenido/concepto de cada capa:

- Modelos/Entidades: Son la representación de la información registrada en la aplicación web, gestiona los accesos a dicha información y la definición de los tipos de datos. En la presente aplicación algunas de los modelos definidos serán: Cliente, Transportador, Bodeguista, e.t.c.
- Controladores: Responden a eventos provocados por el usuario e invoca peticiones al &#39;modelo&#39; cuando se hace alguna solicitud sobre la información (por ejemplo, editar un documento o un registro en una base de datos). También envía comandos a la &#39;vista&#39; asociada.
- Vistas: Presenta la información en un formato adecuado para el usuario (interfaz de usuario).

### MODELO ENTIDAD-RELACIÓN

A continuación, se muestra el modelo entidad-relación planteado:

**Figura 1**

Modelo entidad-relación


![Imagen 1](https://imgur.com/3Wchp29)


### METODOLOGÍA

La metodología ágil que será utilizada en el presente proyecto será **Metodologia de Prototipo** Es una forma de desarrollar software en la que se crea un prototipo del software antes de comenzar el desarrollo completo. Esto permite que los desarrolladores obtengan una mejor comprensión de lo que el software debe hacer y cómo debe funcionar, lo que a su vez puede ayudar a reducir el tiempo y el costo del desarrollo.

La elección de esta metodología se hizo teniendo en cuenta la fecha de entrega del proyecto, el tamaño del equipo (en este caso unipersonal), y las ventajas que presenta frente a una ejecución relativamente pequeña.

### UI

![Captura de Pantalla 2022-11-18](https://imgur.com/gpX81M4)

![Captura de Pantalla 2022-11-18](https://imgur.com/dSKjgt1)

![Captura de Pantalla 2022-11-18](https://imgur.com/ncNEbY8)

![Captura de Pantalla 2022-11-18](https://imgur.com/Dz9ddHD)

![Captura de Pantalla 2022-11-18](https://imgur.com/qaNUlgh)


### RESULTADOS
Se logró el desarrollo de la aplicación web para la búsqueda de empleo cumpliendo los requerimientos funcionales y no funcionales propuestos.

**Figura 4**

Resultados de ejecucion en los requisitos fucionales mas importantes.

![imagen](https://imgur.com/4heiunv)
![imagen](https://imgur.com/uEY5Ap4)
![imagen](https://imgur.com/GKKUJo4)
![imagen](https://imgur.com/eh9gLpg)
![imagen](https://imgur.com/3B2nslv)
![imagen](https://imgur.com/D0jkZ5t)
![imagen](https://imgur.com/iSQzchu)
![imagen](https://imgur.com/Si8eW0o)

 
### CONCLUSIONES
El desarrollo con Java y su FrameWork Server Faces, además de la tecnología Java Beans, ayudo a la rapidez y fluidez del desarrollo, ya que gracias a estas tecnologías se pueden extraer las entidades y usarlas directamente en el código, por tanto, ayuda a la reutilización y optimización de este agregándole todos los servicios de API y componentes corporativos de JAVA 7 EE.

Por otro lado, la arquitectura utilizada (modelo-vista-controlador) mostró ser un paradigma óptimo para este tipo de desarrollo, dado que se encontraron ventajas como: la separación de los datos de su representación visual, fácil manejo de errores y la capacidad de agregar múltiples representaciones de los datos.

De igual manera, la metodología de desarrollo de software utilizada (Prototipo) comprobó ser de bastante útil, debido a que al plantear el proyecto como prototipo se tienen la libertad de poner o agregar funcionalidades según se ve, además de que en el trabajo individual induce a la creatividad y el planteamiento de la visión propia.

Finalmente, agradecer y demostrar como el conocimiento adquirido en la unidad durante el semestre ha permitido llevar a cabo, proyectos e ideas que seran de suma utilidad para la vida profesional.
