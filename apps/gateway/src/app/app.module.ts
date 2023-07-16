import { Module } from '@nestjs/common';
import { ArticleModule } from '../modules/article/article.module';
// import { AuthModule } from '../modules/auth/auth.module';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [
    // AuthModule,
    ArticleModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
