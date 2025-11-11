-- CreateTable
CREATE TABLE `Produtos` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `produto` VARCHAR(191) NOT NULL,
    `tipoUnidade` VARCHAR(191) NOT NULL,
    `setor` VARCHAR(191) NOT NULL,
    `quantidade` DOUBLE NOT NULL,
    `custoCompra` DECIMAL(18, 2) NOT NULL,
    `margemLucro` DECIMAL(18, 2) NOT NULL,
    `precoDeVenda` DECIMAL(18, 2) NOT NULL,
    `ativo` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Clientes` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `numeroTelefone` VARCHAR(191) NOT NULL,
    `ativo` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FormaDePagamento` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `ativo` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CondicaoDePagamento` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `descricao` VARCHAR(191) NOT NULL,
    `codPagamento` INTEGER NOT NULL,
    `quantidadeParcela` INTEGER NOT NULL,
    `parcelaInicial` INTEGER NOT NULL,
    `intervaloParcelas` INTEGER NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Vendas` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `codCliente` INTEGER NOT NULL,
    `nomeCliente` VARCHAR(191) NOT NULL,
    `CodFormadePagamento` INTEGER NOT NULL,
    `CodCondicaoPagamento` INTEGER NOT NULL,
    `valorProdutos` DECIMAL(18, 2) NOT NULL,
    `desconto` INTEGER NOT NULL,
    `valorTotaldeVenda` DECIMAL(18, 2) NOT NULL,
    `dataHora` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ItensVendas` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `codVenda` INTEGER NOT NULL,
    `codProduto` INTEGER NOT NULL,
    `nomeProduto` VARCHAR(191) NOT NULL,
    `custoProduto` DECIMAL(18, 2) NOT NULL,
    `quantidade` DOUBLE NOT NULL,
    `custoUnitariodeVenda` DECIMAL(18, 2) NOT NULL,
    `desconto` DECIMAL(18, 2) NOT NULL,
    `valorTotaldeVenda` DECIMAL(18, 2) NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Titulos` (
    `codigo` INTEGER NOT NULL AUTO_INCREMENT,
    `codVenda` INTEGER NOT NULL,
    `codFormadePagamento` INTEGER NOT NULL,
    `codCondicaoPagamento` INTEGER NOT NULL,
    `codCliente` INTEGER NOT NULL,
    `nomdeCliente` VARCHAR(191) NOT NULL,
    `valorTitulo` DECIMAL(18, 2) NOT NULL,
    `emissao` DATETIME(3) NOT NULL,
    `vencimento` DATETIME(3) NOT NULL,

    PRIMARY KEY (`codigo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
