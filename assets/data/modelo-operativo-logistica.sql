-- Modelo simplificado para una solución operativa de logística y transporte
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  contacto VARCHAR(150),
  email VARCHAR(150),
  telefono VARCHAR(40),
  activo BOOLEAN DEFAULT true
);

CREATE TABLE unidades (
  id SERIAL PRIMARY KEY,
  numero_economico VARCHAR(50) UNIQUE NOT NULL,
  tipo VARCHAR(80),
  placas VARCHAR(30),
  estado VARCHAR(50) DEFAULT 'disponible'
);

CREATE TABLE ordenes_transporte (
  id SERIAL PRIMARY KEY,
  folio VARCHAR(40) UNIQUE NOT NULL,
  cliente_id INTEGER REFERENCES clientes(id),
  unidad_id INTEGER REFERENCES unidades(id),
  origen VARCHAR(150),
  destino VARCHAR(150),
  estado VARCHAR(50) DEFAULT 'programada',
  prioridad VARCHAR(30),
  eta TIMESTAMP,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE eventos_trazabilidad (
  id SERIAL PRIMARY KEY,
  orden_id INTEGER REFERENCES ordenes_transporte(id),
  tipo_evento VARCHAR(80),
  descripcion TEXT,
  ubicacion VARCHAR(180),
  evidencia_url TEXT,
  usuario VARCHAR(120),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE detecciones_ia (
  id SERIAL PRIMARY KEY,
  camara VARCHAR(120),
  tipo VARCHAR(80), -- EPP, rack, postura, zona restringida, anomalía
  confianza DECIMAL(5,2),
  descripcion TEXT,
  accion_recomendada TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
