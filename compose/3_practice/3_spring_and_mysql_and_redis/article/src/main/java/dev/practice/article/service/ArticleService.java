package dev.practice.article.service;

import dev.practice.article.domain.Article;
import dev.practice.article.repository.ArticleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ArticleService {

    private final ArticleRepository articleRepository;

    @Transactional
    public void save(Article article) {
        articleRepository.save(article);
    }

    @Transactional(readOnly = true)
    public List<Article> findAll() {
        return articleRepository.findAll();
    }

    @Transactional(readOnly = true)
    @Cacheable(value = "articles:v1", key = "#id", sync = true)
    public Article findById(Long id) {

        try {
            Thread.sleep(Duration.of(5L, ChronoUnit.SECONDS));
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

        return articleRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Article not found"));
    }
}
