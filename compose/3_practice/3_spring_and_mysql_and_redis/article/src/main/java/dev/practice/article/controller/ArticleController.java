package dev.practice.article.controller;

import dev.practice.article.controller.request.CreateArticleRequest;
import dev.practice.article.entity.Article;
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

    @GetMapping
    public ResponseEntity<List<Article>> getAllArticles() {

        return ResponseEntity.ok(null);
    }

    @PostMapping("/new")
    public ResponseEntity<Article> createArticle(@RequestBody CreateArticleRequest request) {
        
        return ResponseEntity.ok(null);
    }
}
