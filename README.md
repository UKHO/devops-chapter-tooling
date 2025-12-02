# DevOps Chapter Tooling

Repository to contain useful resources for the chapter.

## Sandbox

Inside the 'sandbox' directory, you'll find a terraform subdirectory that contains prerequisite resources needed for the sandbox. Currently, there is terraform for:



- TFState Storage Account

As of writing, the only space for the sandbox is inside of the `m-devopschapter-rg` in the discovery subscription. See [Wiki Page](https://dev.azure.com/ukhydro/DevOps%20Chapter/_wiki/wikis/DevOpsChapter.wiki/4314/Sandbox).

To deploy the infrastructure, run sandbox/prerequisites/Deploy-Prerequisites.ps1. The discovery config must be updated with the subscription ID.

> [!IMPORTANT]
> The tfstate for the sandbox prerequisites is currently stored locally on the Chapter Lead's machine.