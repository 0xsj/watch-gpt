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
export class ArticleService implements OnModuleInit {
  constructor(
    @Inject('ARTICLE-SERVICE') private readonly articleClient: ClientKafka
  ) {}
  onModuleInit() {
    this.articleClient.subscribeToResponseOf('get_all_articles');
  }

  getAll() {
    logger.log('GATEWAY - Calling Article Service');

    const test = {
      id: 'fizz',
      name: 'buzz',
    };

    return this.articleClient.send('get_all_articles', test).pipe(
      map((articles) => {
        logger.log('GATEWAY - Articles retrieved');

        return articles;
      })
    );
  }
}
