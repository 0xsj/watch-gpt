import { Logger } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { Transport, MicroserviceOptions } from '@nestjs/microservices';

import { AppModule } from './app/app.module';

const logger = new Logger();

async function bootstrap() {
  const app = await NestFactory.createMicroservice<MicroserviceOptions>(
    AppModule,
    {
      transport: Transport.KAFKA,
      options: {
        client: {
          clientId: 'news-service',
          brokers: ['localhost:9092'],
        },
        consumer: {
          groupId: 'news-service',
        },
      },
    }
  );

  logger.log('News-service is listening!');
  await app.listen();
}

bootstrap();
