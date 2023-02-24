import "reflect-metadata";
import { resolvers } from "@generated/graphql/type-graphql";
import { buildSchema } from "type-graphql";

import { printSchema } from 'graphql';
import { writeFileSync } from 'fs';
import { env } from "process";


async function generateSchemaFile(){

const schema = await buildSchema({
    resolvers,
    validate: false,
});

const sdl = printSchema(schema);

const output = env.SDL_OUTPUT || './schema.graphql';

writeFileSync(output, sdl);

}

generateSchemaFile();

