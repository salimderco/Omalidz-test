import { PrismaService } from '../../prisma.service';
export declare class AuthService {
    private prisma;
    constructor(prisma: PrismaService);
    register(email: string, password: string, name: string, role?: string): Promise<{
        id: string;
        email: string;
        name: string;
        role: string;
    }>;
    login(email: string, password: string): Promise<{
        token: string;
        user: {
            id: string;
            email: string;
            name: string;
            role: string;
        };
    }>;
}
