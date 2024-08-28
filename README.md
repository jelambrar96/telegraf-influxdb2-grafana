# Monitoreo de Métricas con Telegraf, InfluxDB2 y Grafana

Este repositorio contiene un proyecto para capturar, almacenar y visualizar métricas de sistemas usando Telegraf, InfluxDB2 y Grafana. El objetivo es proporcionar una solución completa para el monitoreo en tiempo real de diversos aspectos de sistemas y aplicaciones.

## Características

- **Telegraf**: Se utiliza como agente de recopilación de métricas. Es altamente configurable y soporta una amplia gama de plugins para obtener datos de diferentes fuentes (CPU, memoria, red, etc.).
- **InfluxDB2**: Base de datos de series temporales utilizada para almacenar las métricas recopiladas por Telegraf. Ofrece alto rendimiento y capacidad de gestión de datos temporales.
- **Grafana**: Herramienta de visualización que permite crear dashboards personalizados para visualizar las métricas almacenadas en InfluxDB2. Grafana se conecta fácilmente a InfluxDB y permite generar gráficos, alertas, y más.

## Instalación y Configuración

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tu_usuario/tu_repositorio.git
   cd tu_repositorio
   ```

2. **Configurar Telegraf**:
   - Modifica el archivo de configuración de Telegraf (`telegraf.conf`) para definir los plugins de entrada y salida. Asegúrate de configurar la salida para que envíe los datos a InfluxDB2.

3. **Configurar InfluxDB2**:
   - Instala y configura InfluxDB2. Crea una organización y un bucket donde se almacenarán las métricas.
   - Genera un token de acceso para permitir que Telegraf envíe datos a InfluxDB2.

4. **Configurar Grafana**:
   - Instala Grafana y añade InfluxDB2 como fuente de datos.
   - Importa los dashboards incluidos en el repositorio o crea los tuyos personalizados para visualizar las métricas.

## Uso

- Ejecuta Telegraf para comenzar a recopilar y enviar métricas a InfluxDB2.
- Abre Grafana para ver las métricas en tiempo real.

## Contribuciones

Las contribuciones son bienvenidas. Siéntete libre de abrir un issue o enviar un pull request.

