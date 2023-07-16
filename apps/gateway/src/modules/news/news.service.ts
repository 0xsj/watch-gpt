import { Injectable } from '@nestjs/common';

@Injectable()
export class NewsService {
  getData(): { message: string } {
    return { message: 'News Service' };
  }
}
