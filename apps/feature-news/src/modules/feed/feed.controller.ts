import { Controller, Get } from '@nestjs/common';
import axios from 'axios';

@Controller('articles')
export class FeedController {
  private articles = [];

  @Get()
  async getArticles() {
    if (this.articles.length === 0) {
      try {
        const response = await axios.get(
          'https://api.spaceflightnewsapi.net/v4/articles/'
        );
        this.articles = response.data;
        console.log(response);
      } catch (error) {
        console.error('Error fetching articles:', error);
        return [];
      }
    }

    return this.articles;
  }
}
