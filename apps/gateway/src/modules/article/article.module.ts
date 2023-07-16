import { Module } from '@nestjs/common';
import { ClientsModule, Transport } from '@nestjs/microservices';
import { ArticleService } from './article.service';

@Module({
  imports: [
    ClientsModule.register([
      {
        name: 'ARTICLE-SERVICE',
        transport: Transport.KAFKA,
        options: {
          client: {
            clientId: 'article-service',
            brokers: ['localhost:9092'],
          },
          consumer: {
            groupId: 'article-service',
          },
        },
      },
    ]),
  ],
  providers: [
    ArticleService,
    // NewsResolver
  ],
})
export class ArticleModule {}
