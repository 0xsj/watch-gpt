import {
  BadRequestException,
  Inject,
  Injectable,
  Logger,
  OnModuleInit,
} from '@nestjs/common';
import { ClientKafka, RpcException } from '@nestjs/microservices';
import { map } from 'rxjs';

const logger = new Logger();

@Injectable()
export class NewsService implements OnModuleInit {
  constructor(
    @Inject('NEWS-SERVICE') private readonly newsClient: ClientKafka
  ) {}
  onModuleInit() {
    this.newsClient.subscribeToResponseOf('get_all_news');
  }

  getAll() {
    logger.log('GATEWAY - Calling Article Service');

    const test = {
      id: 'fizz',
      name: 'buzz',
    };

    return this.newsClient.send('get_all_articles', test).pipe(
      map((articles) => {
        logger.log('GATEWAY - Articles retrieved');

        return articles;
      })
    );
  }
}
