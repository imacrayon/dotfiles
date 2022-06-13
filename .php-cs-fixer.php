<?php

return (new PhpCsFixer\Config)->setRules([
        '@Symfony' => true,
        'array_syntax' => ['syntax' => 'short'],
        'increment_style' => ['style' => 'post'],
        'new_with_braces' => false,
        'no_empty_comment' => false,
        'no_extra_blank_lines' => [
            'tokens' => [
                'extra',
                'throw',
                'use',
                'use_trait',
            ],
        ],
        'not_operator_with_successor_space' => true,
        'ordered_imports' => [
            'sort_algorithm' => 'alpha',
            'imports_order' => ['const', 'class', 'function'],
        ],
        'phpdoc_align' => [
            'tags' => ['return'],
        ],
        'phpdoc_no_empty_return' => false,
        'phpdoc_order' => true,
        'phpdoc_separation' => false,
        'php_unit_method_casing' => ['case' => 'snake_case'],
        'single_trait_insert_per_statement' => false,
        'yoda_style' => false,
    ])
    ->setLineEnding("\n");
