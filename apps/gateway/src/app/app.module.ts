import { Module } from '@nestjs/common';
import { NewsModule } from '../modules/news/news.module';
// import { AuthModule } from '../modules/auth/auth.module';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [
    // AuthModule,
    NewsModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
