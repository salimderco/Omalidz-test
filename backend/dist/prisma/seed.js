"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const bcrypt = require("bcryptjs");
const prisma = new client_1.PrismaClient();
async function main() {
    const hashed = await bcrypt.hash('password123', 10);
    const user = await prisma.user.upsert({
        where: { email: 'testuser@example.com' },
        update: {},
        create: {
            email: 'testuser@example.com',
            password: hashed,
            name: 'Test User',
            role: 'worker',
        },
    });
    await prisma.task.create({
        data: {
            title: 'Sample Task',
            description: 'This is a sample task for the test user.',
            status: 'pending',
            userId: user.id,
        },
    });
    console.log('Seed data created.');
}
main()
    .catch((e) => {
    console.error(e);
    process.exit(1);
})
    .finally(async () => {
    await prisma.$disconnect();
});
//# sourceMappingURL=seed.js.map