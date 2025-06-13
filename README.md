# CMS Stack

A microservices-based Content Management System (CMS) built with containerized services and deployed using Helm charts.

## Architecture

The CMS stack consists of the following microservices:

- **cms-user-service** - User management and authentication
- **cms-post-service** - Content and post management
- **cms-site-service** - Site configuration and settings
- **cms-route-service** - URL routing and navigation
- **cms-sitemap-service** - SEO sitemap generation
- **cms-image-service** - Image storage and management

## Technology Stack

### Databases
- **PostgreSQL** - Used by user, post, and route services
- **MongoDB** - Used by site, sitemap, and image services

### Message Broker
- **RabbitMQ** - Inter-service communication

### Storage
- **S3-compatible Object Storage** - Image and media file storage (MinIO)

### Container Registry
- **GitHub Container Registry (GHCR)** - Docker image hosting

## Prerequisites

- Kubernetes cluster
- Helm 3.x
- Access to the following infrastructure:
  - PostgreSQL server
  - MongoDB server
  - RabbitMQ server
  - S3-compatible storage

## Deployment

All services are deployed to the `cms` namespace using Helm charts from the GitHub Container Registry.

> **⚠️ Important Notice:** Before deploying, you must modify the Helm values files in the [`helm/values/`](helm/values/) directory to match your specific environment. Update database connection strings, service endpoints, credentials, and other configuration parameters as needed for your infrastructure.

### Deploy Individual Services

#### User Service
```bash
./helm/deploy-cms-user-service.sh
```

#### Post Service
```bash
./helm/deploy-cms-post-service.sh
```

#### Site Service
```bash
./helm/deploy-cms-site-service.sh
```

#### Route Service
```bash
./helm/deploy-cms-route-service.sh
```

#### Sitemap Service
```bash
./helm/deploy-cms-sitemap-service.sh
```

#### Image Service
```bash
./helm/deploy-cms-image-service.sh
```

### Deploy All Services
```bash
cd helm
./deploy-cms-user-service.sh
./deploy-cms-post-service.sh
./deploy-cms-site-service.sh
./deploy-cms-route-service.sh
./deploy-cms-sitemap-service.sh
./deploy-cms-image-service.sh
```

## Configuration

Each service has its own Helm values file in the [`helm/values/`](helm/values/) directory:

- [`cms-user-service-values.yaml`](helm/values/cms-user-service-values.yaml) - User service configuration
- [`cms-post-service-values.yaml`](helm/values/cms-post-service-values.yaml) - Post service configuration
- [`cms-site-service-values.yaml`](helm/values/cms-site-service-values.yaml) - Site service configuration
- [`cms-route-service-values.yaml`](helm/values/cms-route-service-values.yaml) - Route service configuration
- [`cms-sitemap-service-values.yaml`](helm/values/cms-sitemap-service-values.yaml) - Sitemap service configuration
- [`cms-image-service-values.yaml`](helm/values/cms-image-service-values.yaml) - Image service configuration
