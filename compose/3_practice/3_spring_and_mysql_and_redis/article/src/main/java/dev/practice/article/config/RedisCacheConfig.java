package dev.practice.article.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import dev.practice.article.domain.Article;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.time.Duration;
import java.util.Map;

@Configuration
@EnableCaching
public class RedisCacheConfig {

    @Bean
    public RedisCacheManager redisCacheManager(RedisConnectionFactory redisConnectionFactory) {

        ObjectMapper objectMapper = new ObjectMapper().findAndRegisterModules();

        // key
        StringRedisSerializer keySer = new StringRedisSerializer();

        // values
        Jackson2JsonRedisSerializer<Article> articleSerializer = new Jackson2JsonRedisSerializer<>(objectMapper, Article.class);

        // default config
        RedisCacheConfiguration defaultConfig = RedisCacheConfiguration.defaultCacheConfig()
                .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(keySer))
                .entryTtl(Duration.ofSeconds(30L))
                .disableCachingNullValues();

        RedisCacheConfiguration articleConfig = defaultConfig
                .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(articleSerializer))
                .entryTtl(Duration.ofSeconds(60L));

        return RedisCacheManager.builder(redisConnectionFactory)
                .cacheDefaults(defaultConfig)
                .withInitialCacheConfigurations(
                        Map.of("articles:v1", articleConfig)
                )
                .build();
    }
}
