# Despliegue Automatizado de API Node.js con MySQL en la Nube AWS

## Descripción del Proyecto

Este proyecto consiste en una API web en Node.js que interactúa con una base de datos MySQL. La aplicación está diseñada para ser desplegada en la nube pública de AWS utilizando Terraform y Ansible para la infraestructura y la automatización de configuraciones.

Las herramientas utilizadas son:
- **Terraform:** Para aprovisionar la infraestructura en AWS.
- **Ansible:** Para la configuración automática de los contenedores Docker en la máquina virtual.
- **AWS:** Como proveedor de nube pública.

## Estructura del Proyecto

El proyecto está compuesto por varios directorios y archivos:

- `terraform/`: Contiene scripts de Terraform para aprovisionar la infraestructura en AWS.
- `ansible/`: Incluye playbooks y configuraciones para la instalación y configuración de la aplicación y la base de datos MySQL.
- `screens/`: Se encuentran todas las es relacionadas a la documentación
- `README.md`: Este archivo.

## Preparación de la Nube Pública

1. **Configurar credenciales de AWS**: 
   - En la terminal, establece las credenciales de acceso utilizando los siguientes comandos:
     ```bash
     export AWS_SECRET_ACCESS_KEY=<tu_aws_secret_access_key>
     export AWS_ACCESS_KEY_ID=<tu_aws_access_key_id>
     ```

2. **Inicializar Terraform**:
   - Navega al directorio de Terraform y ejecuta el siguiente comando:
     ```bash
     terraform init
     ```

3. **Aplicar configuración de Terraform**:
   - Aplica los cambios definidos en los archivos de configuración de Terraform:
     ```bash
     terraform apply
     ```

4. **Verificar conexión con Ansible**:
   - Una vez creados los archivos de Ansible, navega al directorio correspondiente y usa el comando `ping` para comprobar la conexión:
     ```bash
     ansible all -m ping -i inventory.ini
     ```

5. **Ejecutar playbooks de Ansible**:
   - Ejecuta los playbooks para configurar la base de datos y la aplicación:
     ```bash
     ansible-playbook -i inventory.ini playbook_mysql.yaml
     ansible-playbook -i inventory.ini playbook_app.yaml
     ```

## Imágenes del Proceso

A continuación se presentan algunas imágenes que documentan el proceso:

1. **Configuración de credenciales de AWS**:  
   ![Configuración de credenciales de AWS](/screens/1.jpeg)

2. **Inicialización de Terraform**:  
   ![Inicialización de Terraform](/screens/2.jpeg)

3. **Aplicación de configuración de Terraform**:  
   ![Aplicación de configuración de Terraform](/screens/3.jpeg)

4. **Verificación de conexión con Ansible**:  
   ![Verificación de conexión con Ansible](/screens/4.jpeg)

5. **Ejecutar playbooks de Ansible**:  
   ![Ejecutar playbooks de Ansible](/screens/5.jpeg)

6. **Proyecto en ejecución**:
   ![Proyecto en ejecución](/screens/6.png)

7. **Petición GET**:
   ![Petición GET](/screens/7.png)

8. **Petición POST**:
   ![Petición POST](/screens/8.png)

9. **Petición PUT**:
   ![Petición PUT](/screens/9.png)

10. **Petición DELETE**:
   ![Petición DELETE](/screens/10.png)

## Requerimientos
Antes de ejecutar el despliegue automatizado, es necesario tener instaladas las siguientes herramientas en tu máquina controladora (local):

- Terraform
- Ansible
- Node.js
- NPM
- MySQL