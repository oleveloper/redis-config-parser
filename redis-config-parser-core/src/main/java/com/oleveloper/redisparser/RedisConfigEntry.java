package com.oleveloper.redisparser;

import java.nio.file.Paths;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import com.oleveloper.redisparser.RedisLexer;
import com.oleveloper.redisparser.RedisParser;

public class RedisConfigEntry {
	public static void main(String[] args) throws Exception {
		String filePath = "";

		CharStream input = CharStreams.fromPath(Paths.get(filePath));
		RedisLexer lexer = new RedisLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		RedisParser parser = new RedisParser(tokens);

		try {
			RedisParser.ConfigurationsContext context = parser.configurations();
		} catch (Exception e) {
			// Do something
		}
	}
}
