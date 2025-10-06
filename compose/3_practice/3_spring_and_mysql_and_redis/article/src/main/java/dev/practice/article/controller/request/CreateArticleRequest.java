package dev.practice.article.controller.request;

public record CreateArticleRequest(
        String title,
        String content
) {
}
