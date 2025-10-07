package dev.practice.article.controller.request;

import dev.practice.article.domain.Article;
import jakarta.validation.constraints.NotBlank;

public record CreateArticleRequest(
        @NotBlank(message = "title is blank..")
        String title,
        @NotBlank(message = "content is blank..")
        String content
) {

    public Article toEntity() {
        return Article.of(title, content);
    }
}
