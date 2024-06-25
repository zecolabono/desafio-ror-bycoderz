# frozen_string_literal: true

TransactionType.find_or_create_by!(id: 1, description: 'Débito', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 2, description: 'Boleto', operator: TransactionType::OUT_OPERATOR)
TransactionType.find_or_create_by!(id: 3, description: 'Financiamento', operator: TransactionType::OUT_OPERATOR)
TransactionType.find_or_create_by!(id: 4, description: 'Crédito', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 5, description: 'Recebimento Empréstimo', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 6, description: 'Vendas', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 7, description: 'Recebimento TED', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 8, description: 'Recebimento DOC', operator: TransactionType::IN_OPERATOR)
TransactionType.find_or_create_by!(id: 9, description: 'Aluguel', operator: TransactionType::OUT_OPERATOR)
