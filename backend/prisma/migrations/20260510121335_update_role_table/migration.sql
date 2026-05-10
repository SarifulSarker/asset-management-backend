-- DropForeignKey
ALTER TABLE "roles" DROP CONSTRAINT "roles_permissionId_fkey";

-- AlterTable
ALTER TABLE "roles" ALTER COLUMN "permissionId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "roles" ADD CONSTRAINT "roles_permissionId_fkey" FOREIGN KEY ("permissionId") REFERENCES "permissions"("id") ON DELETE SET NULL ON UPDATE CASCADE;
