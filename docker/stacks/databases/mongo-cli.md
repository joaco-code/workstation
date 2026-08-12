# 📚 Guía Práctica: Operaciones CRUD en MongoDB

Esta guía contiene los comandos fundamentales para interactuar con MongoDB. 
**CRUD** es el acrónimo de las cuatro funciones básicas de almacenamiento persistente: **C**reate, **R**ead, **U**pdate y **D**elete.

---

## 0. Preparación del Entorno

Antes de comenzar a insertar datos, seleccionamos la base de datos que queremos usar (si no existe, MongoDB la creará automáticamente al insertar el primer dato).

```javascript
// Cambiar a la base de datos "colegio"
use colegio;

```

---

## 1. Create (Crear)

Agrega nuevos documentos (registros) a una colección (tabla). Si la colección `alumnos` no existe, se creará en el acto.

**Insertar un solo documento:**

```javascript
db.alumnos.insertOne({
  nombre: "María",
  apellido: "García",
  edad: 22,
  cursos: ["Programación", "Bases de Datos"],
  activo: true
});

```

**Insertar múltiples documentos a la vez:**

```javascript
db.alumnos.insertMany([
  { nombre: "Juan", apellido: "Pérez", edad: 20, cursos: ["Redes"], activo: true },
  { nombre: "Ana", apellido: "López", edad: 25, cursos: ["Programación"], activo: false },
  { nombre: "Carlos", apellido: "Ruiz", edad: 22, cursos: ["Bases de Datos", "Redes"], activo: true }
]);

```

---

## 2. Read (Leer)

Consulta y filtra los documentos existentes en la colección.

**Ver todos los documentos de la colección:**

```javascript
db.alumnos.find();

```

**Mostrar los resultados con un formato bonito (indispensable en terminal):**

```javascript
db.alumnos.find().pretty();

```

**Filtrar por coincidencia exacta (ej. todos los que tienen 22 años):**

```javascript
db.alumnos.find({ edad: 22 });

```

**Uso de operadores (ej. mayores de 21 años):**
*Nota: `$gt` significa "greater than" (mayor que).*

```javascript
db.alumnos.find({ edad: { $gt: 21 } });

```

**Buscar el primer documento que coincida:**

```javascript
db.alumnos.findOne({ nombre: "María" });

```

---

## 3. Update (Actualizar)

Modifica documentos existentes. Requiere dos partes: un filtro (a quién modificar) y la acción de actualización.

**Actualizar un solo documento:**
*Nota: Es obligatorio usar el operador `$set` para modificar un campo sin sobrescribir todo el documento.*

```javascript
db.alumnos.updateOne(
  { nombre: "Juan" },                 // 1. Filtro: a quién buscamos
  { $set: { edad: 21, activo: false } } // 2. Acción: qué cambiamos
);

```

**Agregar un valor a un arreglo (Añadir un curso a Ana):**
*Nota: `$push` agrega un elemento a una lista existente.*

```javascript
db.alumnos.updateOne(
  { nombre: "Ana" },
  { $push: { cursos: "Ciberseguridad" } }
);

```

**Actualizar múltiples documentos (Poner en inactivo a todos los mayores de 24):**

```javascript
db.alumnos.updateMany(
  { edad: { $gt: 24 } },   {$set: { activo: false } }
);

```

---

## 4. Delete (Borrar)

Elimina documentos de la colección de forma permanente.

**Borrar un solo documento que coincida con el filtro:**

```javascript
db.alumnos.deleteOne({ nombre: "Carlos" });

```

**Borrar todos los documentos que coincidan con un filtro:**

```javascript
db.alumnos.deleteMany({ activo: false });

```

**⚠️ PELIGRO: Borrar todos los documentos de la colección (Truncar):**

```javascript
db.alumnos.deleteMany({});

```

```

```
