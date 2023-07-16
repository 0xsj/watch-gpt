import { Module } from '@nestjs/common';
import { ClientsModule, Transport } from '@nestjs/microservices';
// import { NewsResolver } from './news.resolver';
import { NewsService } from './news.service';

@Module({
  imports: [
    ClientsModule.register([
      {
        name: 'NEWS-SERVICE',
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
      },
    ]),
  ],
  providers: [
    NewsService,
    // NewsResolver
  ],
})
export class NewsModule {}
