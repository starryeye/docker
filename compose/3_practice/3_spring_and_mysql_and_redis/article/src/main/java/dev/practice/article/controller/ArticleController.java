package dev.practice.article.controller;

import dev.practice.article.controller.request.CreateArticleRequest;
import dev.practice.article.domain.Article;
import dev.practice.article.service.ArticleService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/articles")
@RequiredArgsConstructor
public class ArticleController {

    private final ArticleService articleService;

    @PostMapping("/new")
    public ResponseEntity<Article> createArticle(@RequestBody CreateArticleRequest request) {

        articleService.save(request.toEntity());

        return ResponseEntity.ok().build();
    }

    @GetMapping
    public ResponseEntity<List<Article>> getAllArticles() {

        List<Article> articles = articleService.findAll();

        return ResponseEntity.ok().body(articles);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Article> getArticleById(@PathVariable Long id) {

        Article article = articleService.findById(id);

        return ResponseEntity.ok().body(article);
    }
}
