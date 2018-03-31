// Copyright (c) 2016-2017 The Miguelkoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef MIGUELKOIN_WALLET_TEST_FIXTURE_H
#define MIGUELKOIN_WALLET_TEST_FIXTURE_H

#include <test/test_miguelkoin.h>

#include <wallet/wallet.h>

/** Testing setup and teardown for wallet.
 */
struct WalletTestingSetup: public TestingSetup {
    explicit WalletTestingSetup(const std::string& chainName = CBaseChainParams::MAIN);
    ~WalletTestingSetup();

    CWallet m_wallet;
};

#endif

