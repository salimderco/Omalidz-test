import { CanActivate, ExecutionContext } from '@nestjs/common';
export declare class RolesGuard implements CanActivate {
    private requiredRoles;
    constructor(requiredRoles: string[]);
    canActivate(context: ExecutionContext): boolean;
}
